using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(New_System.Startup))]
namespace New_System
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
