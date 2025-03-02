# frozen_string_literal: true

instrument_section = {
  cello: 'string',
  clarinet: 'woodwind',
  drum: 'percussion',
  oboe: 'woodwind',
  trumpet: 'brass',
  violin: 'string'
}
# hashes with symbol shortcut:
# 
puts instrument_section[:oboe]
puts instrument_section[:cello]
puts instrument_section['cello']
