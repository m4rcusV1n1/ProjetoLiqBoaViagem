using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ProjetoBOBV.Startup))]
namespace ProjetoBOBV
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
