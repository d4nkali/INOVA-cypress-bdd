/// <reference types="cypress" /> 
// Importa o cypress

// Cria o contexto
context ('Acesso a pagina de login', () => {
    
    beforeEach(() => { //Antes de qualquer teste...
        
        cy.visit('https://www.saucedemo.com/v1/') //Abre o site

    });

 afterEach(() => { // Depois do teste
    
    cy.clearAllSessionStorage // Limpa a seção
    cy.screenshot() // Tira uma print

 });

 it('Login Valido', () => { // Para o login valido
        
    cy.get('[data-test="username"]').type('standard_user') // Digita no campo de usuario 
    cy.get('[data-test="password"]').type('secret_sauce') // Digita no campo da senha
    cy.get('#login-button').click() // Clica em login
    cy.get('.product_label').should("contain","Products") // Valida o teste

 });

})