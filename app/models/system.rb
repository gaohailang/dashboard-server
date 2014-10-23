class System

  def as_json(options = {})
    result = super

    result[:sources] = Sources.sources
    # result[:widgets] = Widget.list_available
    result[:widgets] = ['alert', 'boolean', 'exception_tracker', 'graph', 'meter', 'number', 'status_table']

    result
  end
end