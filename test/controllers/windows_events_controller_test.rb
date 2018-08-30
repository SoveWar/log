require 'test_helper'

class WindowsEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @windows_event = windows_events(:one)
  end

  test "should get index" do
    get windows_events_url
    assert_response :success
  end

  test "should get new" do
    get new_windows_event_url
    assert_response :success
  end

  test "should create windows_event" do
    assert_difference('WindowsEvent.count') do
      post windows_events_url, params: { windows_event: { client_id: @windows_event.client_id, event_id: @windows_event.event_id, samaccountname: @windows_event.samaccountname, time: @windows_event.time } }
    end

    assert_redirected_to windows_event_url(WindowsEvent.last)
  end

  test "should show windows_event" do
    get windows_event_url(@windows_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_windows_event_url(@windows_event)
    assert_response :success
  end

  test "should update windows_event" do
    patch windows_event_url(@windows_event), params: { windows_event: { client_id: @windows_event.client_id, event_id: @windows_event.event_id, samaccountname: @windows_event.samaccountname, time: @windows_event.time } }
    assert_redirected_to windows_event_url(@windows_event)
  end

  test "should destroy windows_event" do
    assert_difference('WindowsEvent.count', -1) do
      delete windows_event_url(@windows_event)
    end

    assert_redirected_to windows_events_url
  end
end
