describe("Jungle App Add to Cart Feature", () => {
  beforeEach(() => {
    cy.visit("/");
    cy.get(".products article div form").first().submit();    
    cy.get('[id="email"]').type("joebiden@hotmail.com");
    cy.get('[id="password"]').type("1234567890");
    cy.get('input').contains('Submit').click();
    cy.get('.navbar').contains("Joe");
  })

  it("displays an increment by 1 in my chart item if clicked on Add once (in stock item)", () => {
    cy.get(".products article div form").first().submit();
    cy.get("a[href='/cart'").should("include.text", "1");
  });

  it("doesn not displays an increment by 1 in my chart item if clicked on Add once (for out of stock item)", () => {
    cy.get(".products article div form").last().submit();
    cy.get("a[href='/cart'").should("include.text", "1");
  });
});