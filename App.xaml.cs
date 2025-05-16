using Microsoft.Maui.Controls;
using QuestPDF.Infrastructure;
using Syncfusion.Licensing;

namespace DiabeticTablo;

public partial class App : Application
{
    public App()
    {
        var navPage = new NavigationPage(new MainPage());
        navPage.BarBackgroundColor = Colors.White; // 🔵 Arka plan rengi
        navPage.BarTextColor = Colors.Black;        // ⚫ Başlık yazı rengi
        MainPage = navPage;
        SyncfusionLicenseProvider.RegisterLicense("Mzg2NDY5OUAzMjM5MmUzMDJlMzAzYjMyMzkzYkVMdVVXdG9FekRITzR3czVtY1RCNkQ5UG9vZVRsRWFUMm9nbGxtOXE5TFk9");
    }
}
