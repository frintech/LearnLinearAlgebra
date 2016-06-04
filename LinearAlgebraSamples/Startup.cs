using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(LinearAlgebraSamples.Startup))]
namespace LinearAlgebraSamples
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
