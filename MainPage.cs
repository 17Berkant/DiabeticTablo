using System.Text.Json;
#if ANDROID
using Android.OS;
using Android.Views;
using Microsoft.Maui.Platform;
#endif

namespace DiabeticTablo;

public class Measurement
{
    public DateTime Date { get; set; }
    public int Morning { get; set; }
    public int Noon { get; set; }
    public int Evening { get; set; }
}

public class MainPage : ContentPage
{
    private DatePicker _datePicker;
    private Entry _morningEntry;
    private Entry _noonEntry;
    private Entry _eveningEntry;
    private Button _saveButton;
    private Button _viewMeasurementsButton;
    private Label _weeklyAverageLabel;
    private Label _monthlyAverageLabel;
    public MainPage()
    {
        Title = "Günlük Ölçüm Girişi";

#if ANDROID
    if (OperatingSystem.IsAndroid())
    {
        var window = Platform.CurrentActivity?.Window;
        if (window != null)
        {
            window.SetStatusBarColor(Android.Graphics.Color.White);
        }
    }
#endif

        _datePicker = new DatePicker
        {
            Date = DateTime.Today,
            FontAttributes = FontAttributes.Bold
        };

        _morningEntry = new Entry
        {
            Placeholder = "Sabah Şeker (mg/dL)",
            Keyboard = Keyboard.Numeric,
            FontAttributes = FontAttributes.Bold
        };

        _noonEntry = new Entry
        {
            Placeholder = "Öğle Şeker (mg/dL)",
            Keyboard = Keyboard.Numeric,
            FontAttributes = FontAttributes.Bold
        };

        _eveningEntry = new Entry
        {
            Placeholder = "Akşam Şeker (mg/dL)",
            Keyboard = Keyboard.Numeric,
            FontAttributes = FontAttributes.Bold
        };

        _saveButton = new Button
        {
            Text = "Kaydet",
            BackgroundColor = Colors.Turquoise,
            TextColor = Colors.White,
            FontAttributes = FontAttributes.Bold
        };
        _saveButton.Clicked += SaveMeasurement;

        _viewMeasurementsButton = new Button
        {
            Text = "Ölçümleri Görüntüle",
            BackgroundColor = Colors.Turquoise,
            TextColor = Colors.White,
            FontAttributes = FontAttributes.Bold
        };
        _viewMeasurementsButton.Clicked += ViewMeasurements;

        _weeklyAverageLabel = new Label
        {
            Text = "Haftalık Ortalama: -",
            FontAttributes = FontAttributes.Bold,

        };

        _monthlyAverageLabel = new Label
        {
            Text = "Aylık Ortalama: -",
            FontAttributes = FontAttributes.Bold,
        };

        Content = new ScrollView
        {
            Content = new VerticalStackLayout
            {
                Padding = 20,
                Spacing = 15,
                Children =
                {
                    _datePicker,
                    _morningEntry,
                    _noonEntry,
                    _eveningEntry,
                    _saveButton,
                    _viewMeasurementsButton,
                    _weeklyAverageLabel,
                    _monthlyAverageLabel
                }
            }
        };
    }
    protected override void OnAppearing()
    {
        base.OnAppearing();
        CheckDailyMeasurements();
        UpdateAverages();
    }

    private async void SaveMeasurement(object sender, EventArgs e)
    {
        if (!int.TryParse(_morningEntry.Text, out int morning) ||
            !int.TryParse(_noonEntry.Text, out int noon) ||
            !int.TryParse(_eveningEntry.Text, out int evening))
        {
            await DisplayAlert("Hata", "Lütfen tüm değerleri doğru şekilde girin.", "Tamam");
            return;
        }

        var measurement = new Measurement
        {
            Date = _datePicker.Date,
            Morning = morning,
            Noon = noon,
            Evening = evening
        };

        var measurementsJson = Preferences.Get("Measurements", string.Empty);
        var measurements = string.IsNullOrEmpty(measurementsJson)
            ? new List<Measurement>()
            : JsonSerializer.Deserialize<List<Measurement>>(measurementsJson) ?? new List<Measurement>();

        var existing = measurements.FirstOrDefault(m => m.Date == _datePicker.Date);
        if (existing != null)
        {
            existing.Morning = morning;
            existing.Noon = noon;
            existing.Evening = evening;
        }
        else
        {
            measurements.Add(measurement);
        }
        UpdateAverages();

        Preferences.Set("Measurements", JsonSerializer.Serialize(measurements));

        await DisplayAlert("Başarılı", "Ölçümler kaydedildi.", "Tamam");

        _morningEntry.Text = string.Empty;
        _noonEntry.Text = string.Empty;
        _eveningEntry.Text = string.Empty;
    }

    private async void ViewMeasurements(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new TrackPage());
    }

    private void UpdateAverages()
    {
        var measurementsJson = Preferences.Get("Measurements", string.Empty);
        var measurements = string.IsNullOrEmpty(measurementsJson)
            ? new List<Measurement>()
            : JsonSerializer.Deserialize<List<Measurement>>(measurementsJson) ?? new List<Measurement>();

        var today = DateTime.Today;

        var last7Days = measurements
            .Where(m => m.Date >= today.AddDays(-6) && m.Date <= today)
            .ToList();

        var last30Days = measurements
            .Where(m => m.Date >= today.AddDays(-29) && m.Date <= today)
            .ToList();

        double weeklyAvg = last7Days.Any()
            ? last7Days.Average(m => (m.Morning + m.Noon + m.Evening) / 3.0)
            : 0;

        double monthlyAvg = last30Days.Any()
            ? last30Days.Average(m => (m.Morning + m.Noon + m.Evening) / 3.0)
            : 0;

        _weeklyAverageLabel.Text = $"Haftalık Ortalama: {weeklyAvg:F1} mg/dL";
        _monthlyAverageLabel.Text = $"Aylık Ortalama: {monthlyAvg:F1} mg/dL";
    }
    private async void CheckDailyMeasurements()
    {
        var today = DateTime.Today;

        var measurementsJson = Preferences.Get("Measurements", string.Empty);
        var measurements = string.IsNullOrEmpty(measurementsJson)
            ? new List<Measurement>()
            : JsonSerializer.Deserialize<List<Measurement>>(measurementsJson) ?? new List<Measurement>();

        var todayMeasurement = measurements.FirstOrDefault(m => m.Date.Date == today);

        if (todayMeasurement == null || (todayMeasurement.Morning == 0 && todayMeasurement.Noon == 0 && todayMeasurement.Evening == 0))
        {
            var toast = CommunityToolkit.Maui.Alerts.Toast.Make(
                "Bugün için ölçüm yapmayı unutma!",
                CommunityToolkit.Maui.Core.ToastDuration.Long,
                30);

            await toast.Show();
        }
    }

}
