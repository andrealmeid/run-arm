# Run ARM, run!

_A bash script to link, compile and run ARM codes_

### Uso
Mude a permissão do arquivo para que ele possa ser executado:
```bash
chmod +x run.sh 
```
Rode seu lab:
```bash
./run.sh XX
```
Onde `XX` é o número do seu lab, como por exemplo `08`. Ele irá:
- Remover `tarefaXX.o` e `tarefaXX` antigos;
- Rodar o ligador;
- Rodar o montador e
- Rodar o simulador (opcional).

Ele também possui a flag opcional `-c` (que deve ser o segundo argumento) que só compila o lab, não chama o `armsim` para rodá-lo. __Cuidado:__ se você rodar ./run.sh XX.s, você potencialmente deletará o código fonte do seu lab.
