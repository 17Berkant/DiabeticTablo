using Microsoft.Maui.Controls;
using QuestPDF.Infrastructure;

namespace DiabeticTablo;

public partial class App : Application
{
    public App()
    {
        var navPage = new NavigationPage(new MainPage());
        navPage.BarBackgroundColor = Colors.White; // 🔵 Arka plan rengi
        navPage.BarTextColor = Colors.Black;        // ⚫ Başlık yazı rengi
        MainPage = navPage;
    }
}
