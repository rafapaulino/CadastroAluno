//
//  PrincipalViewController.m
//  CadastroAluno
//
//  Created by Rafael Brigagão Paulino on 22/08/12.
//  Copyright (c) 2012 Rafael Brigagão Paulino. All rights reserved.
//

#import "PrincipalViewController.h"

@interface PrincipalViewController ()

@end

@implementation PrincipalViewController

//metodo disparado toda vez que um textfield recebe o evento de toque em seu botao return
//o textfiled nao sabe o que fazer, entao delega a esta viewController a execucao deste metodo
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    //queremos que a view esconda o teclado
    //para fazer isso, o textfiled deve perder o foco
    [textField resignFirstResponder];
    
    
    //este retorno caiu em desuso, tanto faz o que vc retornar para este metodo
    return YES;
}

//o circulo preenchido ao lado indica que existe uma conexao
//se ele estiver vazio nao ha conexao e pode gerar um erro
- (IBAction) botaoIncluirClicado
{
    //guardando os dados no dicionario
    NSMutableDictionary *listaDados = [[NSMutableDictionary alloc] init];
    [listaDados setObject:campoTexto.text forKey:@"nome"];
    [listaDados setObject:campoTexto2.text forKey:@"sobrenome"];
    
    
    //guardando o nome digitado no campo de texto dentro do vetor
    [listaNomes addObject:listaDados];
    
    NSLog(@"Lista nomes apos a inclusao: %@", listaNomes.description);
    
    //apagando o conteudo do campo de texto
    campoTexto.text = @"";
    campoTexto2.text = @"";
    
    //queremos que a view esconda o teclado
    //para fazer isso, o textfiled deve perder o foco
    [campoTexto resignFirstResponder];
    [campoTexto2 resignFirstResponder];
    
    //criar 2 botoes para listar os nomes e sobrenomes
    
    //converter string para inteiro
    //int x = [campoTexto.text intValue];
    //NSNumber *numero = [NSNumber numberWithInt:x];
    //[listaNomes addObject:numero];
    
}

//metodo chamado quando uma view controller acaba de carregar e a tela vai ser exibida
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //como este metodo viewDidLoad e o primeiro chamado ao carregar a tela, criamos aqui o vetor que vai guardar todos os nomes durante a execucao aqui ele fica visivel a todos os outros metodos
    listaNomes = [[NSMutableArray alloc] init];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
