require 'test_helper'

class MySqlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_sql = my_sqls(:one)
  end

  test "should get index" do
    get my_sqls_url
    assert_response :success
  end

  test "should get new" do
    get new_my_sql_url
    assert_response :success
  end

  test "should create my_sql" do
    assert_difference('MySql.count') do
      post my_sqls_url, params: { my_sql: { Content: @my_sql.Content, title: @my_sql.title } }
    end

    assert_redirected_to my_sql_url(MySql.last)
  end

  test "should show my_sql" do
    get my_sql_url(@my_sql)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_sql_url(@my_sql)
    assert_response :success
  end

  test "should update my_sql" do
    patch my_sql_url(@my_sql), params: { my_sql: { Content: @my_sql.Content, title: @my_sql.title } }
    assert_redirected_to my_sql_url(@my_sql)
  end

  test "should destroy my_sql" do
    assert_difference('MySql.count', -1) do
      delete my_sql_url(@my_sql)
    end

    assert_redirected_to my_sqls_url
  end
end
