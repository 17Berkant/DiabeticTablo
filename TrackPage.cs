using System.Text.Json;
using Colors = Microsoft.Maui.Graphics.Colors;
using Syncfusion.Pdf.Graphics;
using PdfDocument = Syncfusion.Pdf.PdfDocument;
using PdfPage = Syncfusion.Pdf.PdfPage;
using DiabeticTablo;

namespace DiabeticTablo;

public class TrackPage : ContentPage
{
    private VerticalStackLayout _listLayout;
    private Button _shareButton;

    public TrackPage()
    {
        Title = "Ölçüm Takibi";

        _listLayout = new VerticalStackLayout
        {
            Spacing = 10,
            Padding = 10
        };

        _shareButton = new Button
        {
            Text = "PDF Olarak Paylaş",
            BackgroundColor = Colors.Turquoise,
            TextColor = Colors.White,
            FontAttributes = FontAttributes.Bold,
            HorizontalOptions = LayoutOptions.Fill
        };
        _shareButton.Clicked += ShareButton_Clicked;

        var scroll = new ScrollView
        {
            Content = _listLayout
        };

        Content = new ScrollView
        {
            Content = new VerticalStackLayout
            {
                Spacing = 20,
                Padding = 20,
                Children =
        {
            _shareButton,
            _listLayout
        }
            }
        };

    }

    protected override void OnAppearing()
    {
        base.OnAppearing();
        LoadMeasurements();
    }

    private void LoadMeasurements()
    {
        _listLayout.Children.Clear();

        var measurementsJson = Preferences.Get("Measurements", string.Empty);
        var measurements = string.IsNullOrEmpty(measurementsJson)
            ? new List<Measurement>()
            : JsonSerializer.Deserialize<List<Measurement>>(measurementsJson) ?? new List<Measurement>();

        if (!measurements.Any())
        {
            _listLayout.Children.Add(new Label
            {
                Text = "Kayıtlı ölçüm bulunamadı.",
                TextColor = Colors.Gray,
                HorizontalOptions = LayoutOptions.Center
            });
            return;
        }

        foreach (var m in measurements.OrderBy(x => x.Date))
        {
            var card = new Frame
            {
                BorderColor = Colors.Gray,
                CornerRadius = 10,
                Padding = 15,
                Content = new VerticalStackLayout
                {
                    Spacing = 5,
                    Children =
                    {
                        new Label { Text = $"Tarih:{m.Date:dd.MM.yyyy}", TextColor=Colors.Black,FontAttributes = FontAttributes.Bold},
                        new Label { Text = $"Sabah Şeker: {m.Morning} mg/dL",TextColor=Colors.Black,FontAttributes = FontAttributes.Bold },
                        new Label { Text = $"Öğle Şeker: {m.Noon} mg/dL",TextColor=Colors.Black,FontAttributes = FontAttributes.Bold },
                        new Label { Text = $"Akşam Şeker: {m.Evening} mg/dL",TextColor=Colors.Black,FontAttributes = FontAttributes.Bold }
                    }
                }
            };

            _listLayout.Children.Add(card);
        }
    }

    private async void ShareButton_Clicked(object sender, EventArgs e)
    {
        try
        {
            var measurementsJson = Preferences.Get("Measurements", string.Empty);
            var measurements = string.IsNullOrEmpty(measurementsJson)
                ? new List<Measurement>()
                : JsonSerializer.Deserialize<List<Measurement>>(measurementsJson) ?? new List<Measurement>();

            if (!measurements.Any())
            {
                await DisplayAlert("Uyarı", "Paylaşılacak ölçüm bulunamadı.", "Tamam");
                return;
            }

            // PDF Belgesi Oluştur
            using (PdfDocument document = new PdfDocument())
            {
                PdfPage page = document.Pages.Add();
                var graphics = page.Graphics;

                var fontTitle = new PdfStandardFont(PdfFontFamily.Helvetica, 20, PdfFontStyle.Bold);
                var fontText = new PdfStandardFont(PdfFontFamily.Helvetica, 14);

                // Başlık
                graphics.DrawString("Ölçüm Takibi", fontTitle, PdfBrushes.Turquoise, new Syncfusion.Drawing.PointF(0, 0));

                float y = 40;

                foreach (var m in measurements.OrderBy(x => x.Date))
                {
                    var text = $"{m.Date:dd.MM.yyyy} - Sabah: {m.Morning} mg/dL, Ögle: {m.Noon} mg/dL, Akşam: {m.Evening} mg/dL";
                    graphics.DrawString(text, fontText, PdfBrushes.Black, new Syncfusion.Drawing.PointF(0, y));
                    y += 25;
                }

                // PDF'i kaydet
                var filePath = Path.Combine(FileSystem.CacheDirectory, "Olcumler.pdf");
                using (var fileStream = File.Create(filePath))
                {
                    document.Save(fileStream);
                }

                // Paylaş
                await Share.Default.RequestAsync(new ShareFileRequest
                {
                    Title = "Ölçüm Verileri",
                    File = new ShareFile(filePath)
                });
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("Hata", $"PDF oluşturulurken hata oluştu: {ex.Message}", "Tamam");
        }
    }
}
