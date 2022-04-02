package model;

public class Destino {
	
	private int id;
	
	private String nome;
	
	private String cidade;
	
	private String estado;	
	
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	
	
	@Override
	public String toString() {
		return "Destino [id=" + id + ", nome=" + nome + ", cidade=" + cidade + ", estado=" + estado + "]";
	}
	
		
}
