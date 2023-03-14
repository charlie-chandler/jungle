describe('cart testing', () => {
  beforeEach(() => {
    cy.visit('localhost:3000')
  });

  it ('visits the home page', () => {
    cy.visit('localhost:3000')
  });

  it ('updates cart when item is added to cart', () => {
    cy.visit('localhost:3000')
    cy.contains('button', 'Add').click({force: true})
    cy.get('.end-0 > .nav-link').contains('1')
  });
  
})