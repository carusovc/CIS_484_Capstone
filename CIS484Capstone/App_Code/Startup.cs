using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CIS484Capstone.Startup))]
namespace CIS484Capstone
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
