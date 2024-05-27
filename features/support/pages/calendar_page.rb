# frozen_string_literal: true
# calendar_page.rb
require 'site_prism'
require 'capybara'
require_relative '../sections/top_nav_bar'
require_relative '../../models/client'

class CalendarPage < SitePrism::Page
  set_url '/calendar/appointments'

  section :top_nav_bar, TopNavBar, '.top-nav'

  element :today_button, 'button.fc-today-button'
  element :previous_month_button, 'button.fc-prev-button'
  element :next_month_button, 'button.fc-next-button'
  element :month_title, 'h2.fc-toolbar-title'
  element :day_view_button, 'button.view-select-button', text: 'Day'
  element :week_view_button, 'button.view-select-button', text: 'Week'
  element :month_view_button, 'button.view-select-button', text: 'Month'
  element :color_select_button, 'button.button.secondary.block-color'
  element :advanced_filters_button, 'button.calendar-advanced-filter-trigger'
  element :all_team_members_select, 'button.selected', text: 'All team members'
  element :all_locations_select, 'button.selected', text: 'All locations'
  elements :calendar_events, 'a.fc-daygrid-event'

  def navigate_to_today
    today_button.click
  end

  def navigate_to_previous_month
    previous_month_button.click
  end

  def navigate_to_next_month
    next_month_button.click
  end

  def select_day_view
    day_view_button.click
  end

  def select_week_view
    week_view_button.click
  end

  def select_month_view
    month_view_button.click
  end

  def open_color_select
    color_select_button.click
  end

  def open_advanced_filters
    advanced_filters_button.click
  end

  def select_all_team_members
    all_team_members_select.click
  end

  def select_all_locations
    all_locations_select.click
  end
end
