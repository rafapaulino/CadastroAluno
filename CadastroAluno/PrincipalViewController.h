//
//  PrincipalViewController.h
//  CadastroAluno
//
//  Created by Rafael Brigagão Paulino on 22/08/12.
//  Copyright (c) 2012 Rafael Brigagão Paulino. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PrincipalViewController : UIViewController <UITextFieldDelegate>
{
    
    //iboutlet define que o ponteiro deve ser conectado a um componete visual (StoryBoard)
    IBOutlet UITextField * campoTexto;
    
    //sobrenome
    IBOutlet UITextField * campoTexto2;
    
    //criando o array que ira guardar a lista de nomes
    NSMutableArray *listaNomes;

    
}

//ibaction define que este metodo deve ser conectado a algum componente visual para responder a um evento daquele componente
- (IBAction) botaoIncluirClicado;

@end
