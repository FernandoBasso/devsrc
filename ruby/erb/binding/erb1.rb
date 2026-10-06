class Ctx
  def initialize config:, adoc:, side_nav:
    @config = config
    @adoc = adoc
    @side_nav = side_nav
  end
end

config = { site_title: "Site" }
adoc = '= Title'
side_nav = '<ul></ul>'

ctx = Ctx.new(config: config, adoc: adoc, side_nav: side_nav)

p eval("@config", ctx.instance_eval("binding"))
p eval("@adoc", ctx.instance_eval("binding"))
p eval("@side_nav", ctx.instance_eval("binding"))
