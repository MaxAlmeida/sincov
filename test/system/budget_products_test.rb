require "application_system_test_case"

class BudgetProductsTest < ApplicationSystemTestCase
  setup do
    @budget_product = budget_products(:one)
  end

  test "visiting the index" do
    visit budget_products_url
    assert_selector "h1", text: "Budget Products"
  end

  test "creating a Budget product" do
    visit budget_products_url
    click_on "New Budget Product"

    fill_in "Budget", with: @budget_product.budget
    fill_in "Integer", with: @budget_product.integer
    fill_in "Product", with: @budget_product.product_id
    fill_in "Quantity", with: @budget_product.quantity
    click_on "Create Budget product"

    assert_text "Budget product was successfully created"
    click_on "Back"
  end

  test "updating a Budget product" do
    visit budget_products_url
    click_on "Edit", match: :first

    fill_in "Budget", with: @budget_product.budget
    fill_in "Integer", with: @budget_product.integer
    fill_in "Product", with: @budget_product.product_id
    fill_in "Quantity", with: @budget_product.quantity
    click_on "Update Budget product"

    assert_text "Budget product was successfully updated"
    click_on "Back"
  end

  test "destroying a Budget product" do
    visit budget_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Budget product was successfully destroyed"
  end
end
