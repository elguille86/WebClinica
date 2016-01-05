using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WebClinica.Startup))]
namespace WebClinica
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
