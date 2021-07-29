require "application_system_test_case"

class ProjectsTest < ApplicationSystemTestCase
  setup do
    @project = projects(:one)
  end

  test "visiting the index" do
    visit projects_url
    assert_selector "h1", text: "Projects"
  end

  test "creating a Project" do
    visit projects_url
    click_on "New Project"

    fill_in "Assigned", with: @project.assigned
    fill_in "Class", with: @project.class
    fill_in "Class", with: @project.class_id
    fill_in "Description", with: @project.description
    fill_in "Due", with: @project.due
    fill_in "Name", with: @project.name
    fill_in "Pid", with: @project.pid
    click_on "Create Project"

    assert_text "Project was successfully created"
    click_on "Back"
  end

  test "updating a Project" do
    visit projects_url
    click_on "Edit", match: :first

    fill_in "Assigned", with: @project.assigned
    fill_in "Class", with: @project.class
    fill_in "Class", with: @project.class_id
    fill_in "Description", with: @project.description
    fill_in "Due", with: @project.due
    fill_in "Name", with: @project.name
    fill_in "Pid", with: @project.pid
    click_on "Update Project"

    assert_text "Project was successfully updated"
    click_on "Back"
  end

  test "destroying a Project" do
    visit projects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project was successfully destroyed"
  end
end
