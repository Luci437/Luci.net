using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Barter_System.Startup))]
namespace Barter_System
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
