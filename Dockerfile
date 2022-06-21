#informa a imagem base que iremos utilizar para gerar a nossa própria. 
#(Iremos utilizar a OpenJDK que já possui todo o ambiente Java configurado para compilar e rodar nossa aplicação).
FROM openjdk:18.0-jdk-oraclelinux7
#copia o arquivo MyProjectJava.jar para a pasta /helloWorld/ do container. 
COPY MyProjectJava.jar /helloWorld/
#seleciona o diretório padrão que será utilizado para executar os comandos que iremos informar. 
#(É necessário ser o mesmo diretório informado anteriormente).
WORKDIR /helloWorld/
# comando que será executado durante o processo de build da imagem. 
#(Iremos compilar o arquivo nessa etapa).
##RUN ["javac", "MyProjectJava.java"]
#comando que será executado quando o container terminar de subir
ENTRYPOINT ["java", "-jar", "MyProjectJava.jar"]