require "rack_http_script_name/version"

class RackHttpScriptName
  def initialize(app)
    @app = app
  end
  SCRIPT_NAME = 'SCRIPT_NAME'.freeze
  HTTP_SCRIPT_NAME = 'HTTP_SCRIPT_NAME'.freeze

  def call(env)
    script_name = env['SCRIPT_NAME']
    http_script_name = env['HTTP_SCRIPT_NAME']
    if script_name.empty? && http_script_name && !http_script_name.empty?
      path_info = env['PATH_INFO']
      env["SCRIPT_NAME"] = http_script_name
      env["PATH_INFO"] = env["PATH_INFO"][http_script_name.length..-1]
    end
    @app.call(env)
  end
end
