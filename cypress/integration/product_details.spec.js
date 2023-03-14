describe('product testing', () => {
  beforeEach(() => {
    cy.visit('localhost:3000')
  });

  it ('visits the home page', () => {
    cy.visit('localhost:3000')
  });

  it ('clicks on Scented Blade and visits its product page', () => {
    cy.get('.products > :nth-child(1)').click()
    cy.url().should('include', '/products/')
    cy.get(':nth-child(2) > h1').should('have.text', 'Scented Blade')
  });
  
})