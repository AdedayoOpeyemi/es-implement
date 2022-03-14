class Case < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor

  validates :type, inclusion: { in: ['lab', 'usg', 'digital xray', 'outsource lab', 'ecg', 'ct scan']}

  TYPE_OPTIONS = [
    ['LAB', 'lab'],
    ['USG', 'usg'],
    ['DIGITAL XRAY', 'digital xray'],
    ['XRAY', 'xray'],
    ['OUTSOURCE LAB', 'outsource lab'],
    ['ECG', 'ecg'],
    ['CT SCAN', 'ct scan']
  ]
end
