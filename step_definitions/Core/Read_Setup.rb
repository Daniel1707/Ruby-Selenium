require 'rubygems'

class Setup

  def self.Read(endereco_arquivo)

    line_hash = Hash.new

    begin
      File.open(endereco_arquivo, "r") do |file|
        file.each_line do |line|
          line_hash[line.split(":").first] = line.split(":").last
        end
      end

      return line_hash

    rescue Exception => e
      puts "Nao foi encontrado o arquivo de SETUP."
      puts e
    end
  end
end

#--------------------TESTES
#teste = Setup.Read("C:/Users/Fenix/Desktop/RUBY/PROJETOS/step_definitions/Files/Setup.txt")
#puts "#{teste['CLICAR_LINK']}"
