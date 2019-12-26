require 'test_helper'

class CompanyregsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @companyreg = companyregs(:one)
  end

  test "should get index" do
    get companyregs_url
    assert_response :success
  end

  test "should get new" do
    get new_companyreg_url
    assert_response :success
  end

  test "should create companyreg" do
    assert_difference('Companyreg.count') do
      post companyregs_url, params: { companyreg: { : @companyreg., companyid: @companyreg.companyid, companyname: @companyreg.companyname, createdat: @companyreg.createdat, testid: @companyreg.testid, testname: @companyreg.testname, updatedat: @companyreg.updatedat } }
    end

    assert_redirected_to companyreg_url(Companyreg.last)
  end

  test "should show companyreg" do
    get companyreg_url(@companyreg)
    assert_response :success
  end

  test "should get edit" do
    get edit_companyreg_url(@companyreg)
    assert_response :success
  end

  test "should update companyreg" do
    patch companyreg_url(@companyreg), params: { companyreg: { : @companyreg., companyid: @companyreg.companyid, companyname: @companyreg.companyname, createdat: @companyreg.createdat, testid: @companyreg.testid, testname: @companyreg.testname, updatedat: @companyreg.updatedat } }
    assert_redirected_to companyreg_url(@companyreg)
  end

  test "should destroy companyreg" do
    assert_difference('Companyreg.count', -1) do
      delete companyreg_url(@companyreg)
    end

    assert_redirected_to companyregs_url
  end
end
