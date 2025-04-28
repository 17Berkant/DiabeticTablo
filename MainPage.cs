using Microsoft.Maui.Controls;
using Microsoft.Maui.Storage;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.Json;
using System.IO;
using Microsoft.Maui.ApplicationModel.DataTransfer;
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
            Keyboard = Keyboard.Numeric
        };

        _noonEntry = new Entry
        {
            Placeholder = "Öğle Şeker (mg/dL)",
            Keyboard = Keyboard.Numeric
        };

        _eveningEntry = new Entry
        {
            Placeholder = "Akşam Şeker (mg/dL)",
            Keyboard = Keyboard.Numeric
        };

        _saveButton = new Button
        {
            Text = "Kaydet",
            BackgroundColor = Colors.Green,
            TextColor = Colors.White,
            FontAttributes = FontAttributes.Bold
        };
        _saveButton.Clicked += SaveMeasurement;

        _viewMeasurementsButton = new Button
        {
            Text = "Ölçümleri Görüntüle",
            BackgroundColor = Colors.Green,
            TextColor = Colors.White,
            FontAttributes = FontAttributes.Bold
        };
        _viewMeasurementsButton.Clicked += ViewMeasurements;

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
                    _viewMeasurementsButton
                }
            }
        };
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
}
