describe('home page testing', () => {
  beforeEach(() => {
    cy.visit('localhost:3000')
  });

  it ('visits the home page', () => {
    cy.visit('localhost:3000')
  });

  it("There are products on the page", () => {
    cy.get(".products article").should("be.visible");
  });

  it("There are 2 products on the page", () => {
    cy.get(".products article").should("have.length", 2);
  });
  
})