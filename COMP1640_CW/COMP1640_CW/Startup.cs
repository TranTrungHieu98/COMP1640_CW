using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(COMP1640_CW.Startup))]
namespace COMP1640_CW
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
