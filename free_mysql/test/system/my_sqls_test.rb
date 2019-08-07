require "application_system_test_case"

class MySqlsTest < ApplicationSystemTestCase
  setup do
    @my_sql = my_sqls(:one)
  end

  test "visiting the index" do
    visit my_sqls_url
    assert_selector "h1", text: "My Sqls"
  end

  test "creating a My sql" do
    visit my_sqls_url
    click_on "New My Sql"

    fill_in "Content", with: @my_sql.Content
    fill_in "Title", with: @my_sql.title
    click_on "Create My sql"

    assert_text "My sql was successfully created"
    click_on "Back"
  end

  test "updating a My sql" do
    visit my_sqls_url
    click_on "Edit", match: :first

    fill_in "Content", with: @my_sql.Content
    fill_in "Title", with: @my_sql.title
    click_on "Update My sql"

    assert_text "My sql was successfully updated"
    click_on "Back"
  end

  test "destroying a My sql" do
    visit my_sqls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "My sql was successfully destroyed"
  end
end
