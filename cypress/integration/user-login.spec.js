describe("Jungle App User Login Feature", () => {

  it("loads the home page correctly", () => {
    cy.visit("/");
  });

  it("loads the nav bar with Login button and navgate to login Page after click", () => {
    cy.get('.navbar').contains("Login");
    cy.get('.navbar').contains("Login").click();
  });

  it("displays input fields and user can enter necessary info (email and password) to proceed", () => {
    cy.get('[id="email"]').type("joebiden@hotmail.com");
    cy.get('[id="password"]').type("1234567890");
  });

  it("logs the user in when clicked the submit button with correct info", () => {
    cy.get('input').contains('Submit').click();
  });

  it("shows user's first name and last name in nav bar once logged in", () => {
    cy.get('.navbar').contains("Joe Biden");
  });

  it("logs the user out when clicked the log out button in nav bar and returns to login page", () => {
    cy.get('.navbar').contains("Log out").click();
  });

  it("does not log user in if the info are entered wrong", () => {
    cy.get('[id="email"]').type("donaldjtrump@hotmail.com");
    cy.get('[id="password"]').type("1234567890");
    cy.get('input').contains('Submit').click();
  });

  it("does not log user in if the info are entered wrong", () => {
    cy.get('.navbar').contains("Login");
  });

});