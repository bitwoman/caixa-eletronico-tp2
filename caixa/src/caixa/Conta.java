package caixa;

public class Conta {
	private long numeroConta;
    private Agencia agencia;
    private String banco, tipoConta;
    private double saldoConta;
    private boolean statusConta;
    
	public long getNumeroConta() {
		return numeroConta;
	}
	public void setNumeroConta(long numeroConta) {
		this.numeroConta = numeroConta;
	}
	public Agencia getAgencia() {
		return agencia;
	}
	public void setAgencia(Agencia agencia) {
		this.agencia = agencia;
	}
	public String getBanco() {
		return banco;
	}
	public void setBanco(String banco) {
		this.banco = banco;
	}
	public String getTipoConta() {
		return tipoConta;
	}
	public void setTipoConta(String tipoConta) {
		this.tipoConta = tipoConta;
	}
	public double getSaldoConta() {
		return saldoConta;
	}
	public void setSaldoConta(double saldoConta) {
		this.saldoConta = saldoConta;
	}
	public boolean isStatusConta() {
		return statusConta;
	}
	public void setStatusConta(boolean statusConta) {
		this.statusConta = statusConta;
	}	
}
