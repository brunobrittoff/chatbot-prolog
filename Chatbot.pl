:-include(database1).
:-include(database2).

chatbot:-
    nl,nl,
    format('Seja bem-vindo, para realizar sua pesquisa, digite a pergunta que deseja fazer.'),nl,nl,
    format('Essas sao as opcoes: '),nl,nl,
    format('O que seria uma rede de computadores?'), nl,
    format('Qual a classificacao de redes?'), nl,
    format('O que seria um roteador?'), nl,
    format('O que seria uma placa de rede?'), nl,
    format('O que seria um Modem?'), nl,
    format('O que seria um repetidor?'), nl,
    format('O que seria um Switch?'), nl,
    format('O que seria uma LAN?'), nl,
    format('O que seria uma MAN?'), nl,
    format('O que seria uma WAN?'), nl,
    format('O que seria internet?'), nl,
    format('O que seria Correio eletronico?'), nl,
    format('O que seria um Cabo coaxial?'), nl,
    format('O que seria um Cabo de par trancado?'), nl,
    format('O que seria a Fibra optica?'), nl,
    format('O que seria Radiofrequencia?'), nl,
    format('O que sao Topologias de redes?'), nl,
    format('O que seria uma Topologia Parcialmente Ligada?'), nl,
    format('O que seria uma Topologia em Barramento?'), nl,
    format('O que seria uma Topologia Ponto a Ponto?'), nl,
    format('O que seria uma Topologia Multiponto?'), nl,
    format('O que seria uma Topologia em Estrela?'), nl,
    format('O que seria Ethernet?'), nl,
    format('O que seria Enderecamento na Ethernet e quais sao os seus servicos?'), nl,
    format('O que seria um Protocolo MAC?'), nl,
    format('O que seria Padrao Gigabit Ethernet?'), nl,
    format('O que seria Metro Ethernet?'), nl,
    format('O que seria o protocolo TCP/IP?'), nl,
    format('Quais seriam os protocolos que constituem o TCP?'), nl,
    format('O que seria IGRP?'), nl,
    format('O que seria EIGRP?'), nl,
    format('O que seria SMTP?'), nl,
    format('O que seria Telnet?'), nl,
    format('O que seria FTP?'), nl,
    format('O que seria HTTP?'), nl,
    format('O que seria camada de rede?'), nl,
    format('O que seria IPv4?'), nl,
    format('O que seria ICMP?'), nl,

    repeat,
    read(Input),
    consult(Input, Response),
    format(Response), nl,
    end(Input).

consult(Input, InputResponse) :-
    question(Input, InputResponse), !.

end(Input):-
    Input = ('exit').