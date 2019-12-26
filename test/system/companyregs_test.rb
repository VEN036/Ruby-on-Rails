require "application_system_test_case"

class CompanyregsTest < ApplicationSystemTestCase
  setup do
    @companyreg = companyregs(:one)
  end

  test "visiting the index" do
    visit companyregs_url
    assert_selector "h1", text: "Companyregs"
  end

  test "creating a Companyreg" do
    visit companyregs_url
    click_on "New Companyreg"

    fill_in "", with: @companyreg.
    fill_in "Companyid", with: @companyreg.companyid
    fill_in "Companyname", with: @companyreg.companyname
    fill_in "Createdat", with: @companyreg.createdat
    fill_in "Testid", with: @companyreg.testid
    fill_in "Testname", with: @companyreg.testname
    fill_in "Updatedat", with: @companyreg.updatedat
    click_on "Create Companyreg"

    assert_text "Companyreg was successfully created"
    click_on "Back"
  end

  test "updating a Companyreg" do
    visit companyregs_url
    click_on "Edit", match: :first

    fill_in "", with: @companyreg.
    fill_in "Companyid", with: @companyreg.companyid
    fill_in "Companyname", with: @companyreg.companyname
    fill_in "Createdat", with: @companyreg.createdat
    fill_in "Testid", with: @companyreg.testid
    fill_in "Testname", with: @companyreg.testname
    fill_in "Updatedat", with: @companyreg.updatedat
    click_on "Update Companyreg"

    assert_text "Companyreg was successfully updated"
    click_on "Back"
  end

  test "destroying a Companyreg" do
    visit companyregs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Companyreg was successfully destroyed"
  end
end
