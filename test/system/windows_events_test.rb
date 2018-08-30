require "application_system_test_case"

class WindowsEventsTest < ApplicationSystemTestCase
  setup do
    @windows_event = windows_events(:one)
  end

  test "visiting the index" do
    visit windows_events_url
    assert_selector "h1", text: "Windows Events"
  end

  test "creating a Windows event" do
    visit windows_events_url
    click_on "New Windows Event"

    fill_in "Client", with: @windows_event.client_id
    fill_in "Event", with: @windows_event.event_id
    fill_in "Samaccountname", with: @windows_event.samaccountname
    fill_in "Time", with: @windows_event.time
    click_on "Create Windows event"

    assert_text "Windows event was successfully created"
    click_on "Back"
  end

  test "updating a Windows event" do
    visit windows_events_url
    click_on "Edit", match: :first

    fill_in "Client", with: @windows_event.client_id
    fill_in "Event", with: @windows_event.event_id
    fill_in "Samaccountname", with: @windows_event.samaccountname
    fill_in "Time", with: @windows_event.time
    click_on "Update Windows event"

    assert_text "Windows event was successfully updated"
    click_on "Back"
  end

  test "destroying a Windows event" do
    visit windows_events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Windows event was successfully destroyed"
  end
end
