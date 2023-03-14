describe('product testing', () => {
  beforeEach(() => {
    cy.visit('localhost:3000')
  });

  it ('visits the home page', () => {
    cy.visit('localhost:3000')
  });

  it ('clicks on Swamp Root and visits its product page', () => {
    cy.get('.products > :nth-child(7)').click()
    cy.url().should('include', '/products/')
    cy.get(':nth-child(2) > h1').should('have.text', 'Swamp Root')
  });
  
})