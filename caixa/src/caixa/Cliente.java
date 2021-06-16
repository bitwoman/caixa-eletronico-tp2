package caixa;

public abstract class Cliente {
/*
 * Atributos
 */
	protected String nomeCliente, enderecoClinte, telefoneCliente;
	protected long cpfCliente, rgCliente, cepCliente, senhaCliente;
	protected double rendaCliente;
	protected Agencia nomeAgencia;
	protected Conta numeroConta;
	
/*
 * Getters and Setters
 */
	public String getNomeCliente() {
		return nomeCliente;
	}
	
	public void setNomeCliente(String nomeCliente) {
		this.nomeCliente = nomeCliente;
	}
	
	public String getEnderecoClinte() {
		return enderecoClinte;
	}
	
	public void setEnderecoClinte(String enderecoClinte) {
		this.enderecoClinte = enderecoClinte;
	}
	
	public String getTelefoneCliente() {
		return telefoneCliente;
	}
	
	public void setTelefoneCliente(String telefoneCliente) {
		this.telefoneCliente = telefoneCliente;
	}
	
	public long getCpfCliente() {
		return cpfCliente;
	}
	
	public void setCpfCliente(long cpfCliente) {
		this.cpfCliente = cpfCliente;
	}
	
	public long getRgCliente() {
		return rgCliente;
	}
	
	public void setRgCliente(long rgCliente) {
		this.rgCliente = rgCliente;
	}
	
	public long getCepCliente() {
		return cepCliente;
	}
	
	public void setCepCliente(long cepCliente) {
		this.cepCliente = cepCliente;
	}
	
	public long getSenhaCliente() {
		return senhaCliente;
	}
	
	public void setSenhaCliente(long senhaCliente) {
		this.senhaCliente = senhaCliente;
	}
	
	public double getRendaCliente() {
		return rendaCliente;
	}
	
	public void setRendaCliente(double rendaCliente) {
		this.rendaCliente = rendaCliente;
	}
	
	public Agencia getNomeAgencia() {
		return nomeAgencia;
	}
	
	public void setNomeAgencia(Agencia nomeAgencia) {
		this.nomeAgencia = nomeAgencia;
	}
	
	public Conta getNumeroConta() {
		return numeroConta;
	}
	
	public void setNumeroConta(Conta numeroConta) {
		this.numeroConta = numeroConta;
	} 
}
