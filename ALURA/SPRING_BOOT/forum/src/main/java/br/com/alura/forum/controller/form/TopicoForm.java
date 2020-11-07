package br.com.alura.forum.controller.form;

import javax.validation.constraints.NotBlank;

import org.hibernate.validator.constraints.Length;

import br.com.alura.forum.modelo.Curso;
import br.com.alura.forum.modelo.Topico;
import br.com.alura.forum.repository.CursoRepository;

public class TopicoForm {
	
	@NotBlank @Length(min = 5)
	private String titulo;
	@NotBlank @Length(min = 10)
	private String mensagem;
	@NotBlank
	private String nomeCurso;
	
	public TopicoForm() {}

	public String getTitulo() {
		return titulo;
	}

	public String getMensagem() {
		return mensagem;
	}

	public String getNomeCurso() {
		return nomeCurso;
	}

	public Topico converter(CursoRepository cursoRepository) {
		Curso curso = cursoRepository.findByNome(nomeCurso);

		return new Topico(titulo, mensagem, curso);
	}
}