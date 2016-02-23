using System.Web;
using System.Web.Optimization;

namespace CMSCMV5
{
    public class BundleConfig
    {
        // For more information on bundling, visit http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at http://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/bootstrap.js",
                      "~/Scripts/respond.js"));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/bootstrap.css",
                      "~/Content/site.css"));

            bundles.Add(new StyleBundle("~/bundles/css").Include(
                     "~/Content/css/bootstrap1.css",
                     "~/Content/css/bootstrap-responsive.css",
                     "~/Content/css/camera.css",
                     "~/Content/css/style.css",
                     "~/Content/fonts/font-awesome.min.css"));

            bundles.Add(new ScriptBundle("~/bundles/js").Include(
                      "~/Scripts/js/jquery.js",
                      "~/Scripts/js/jquery.easing.1.3.js",
                      "~/Scripts/js/superfish.js",
                      "~/Scripts/js/jquery.ui.totop.js",
                      "~/Scripts/js/camera.js",
                      "~/Scripts/js/jquery.mobile.customized.min.js",
                      "~/Scripts/js/jquery.touchSwipe.min.js",
                      "~/Scripts/js/script.js",
                      "~/Scripts/js/jquery.caroufredsel.js",
                      "~/Scripts/js/bootstrap1.js"));

            
        }
    }
}
