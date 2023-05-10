describe("Jungle App Product Page", () => {
  beforeEach(() => {
    cy.visit("/");
    cy.get(".products article a").first().click();
  })

  it("loads the product image", () => {
    cy.get(".product-detail img");
  });

  it("displays the product title", () => {
    cy.get(".product-detail div h1").should("have.text", "Scented Blade");
  });

  it("loads the product description text", () => {
    cy.get(".product-detail div p").should(
      "include.text",
      "The Scented Blade is an extremely rare, tall plant and can be found mostly in savannas. It blooms once a year, for 2 weeks."
    );
  });

  it("loads the product quantity", () => {
    cy.get(".product-detail div.quantity").should(
      "include.text",
      "18 in stock"
    );
  });

  it("loads the product price", () => {
    cy.get(".product-detail div.quantity").should(
      "include.text",
      "24.99"
    );
  });
});