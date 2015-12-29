using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(VRSMS.Web.Startup))]
namespace VRSMS.Web
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
