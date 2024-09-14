class DiaryEntry < ApplicationRecord
    belongs_to :user, optional: true
end