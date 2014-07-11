# Fixes "Model 'Mini-profiler-resources' could not be found" bug when
# in development mode using Rails Admin
Rack::MiniProfiler.config.skip_paths ||= []
Rack::MiniProfiler.config.skip_paths << '/admin'