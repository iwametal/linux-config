package br.com.alura.forum.config.validacao;

public class ErroDeFormularioDTO {
	private String campo;
	private String mensagem;

	public ErroDeFormularioDTO(String campo, String mensagem) {
		super();
		this.campo = campo;
		this.mensagem = mensagem;
	}

	public String getCampo() {
		return campo;
	}

	public String getMensagem() {
		return mensagem;
	}
}
