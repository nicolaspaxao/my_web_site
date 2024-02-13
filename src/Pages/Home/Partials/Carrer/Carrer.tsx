import styles from './Carrer.module.css';

export const Carrer = () => {
	const carrerList = [
		{
			"company": "Foursys",
			"start": "Nov 2021",
			"end": null,
			"stepCompany": [
				{
					"title": "Desenvolvedor Júnior Open",
					"content": "Desenvolvimento de Aplicações para Bradesco utilizando Angular 8 e integrando com os serviços internos e correções de vulnerabilidade em projetos Java, tanto legado como Spring Boot."
				},
				{
					"title": "Trainee",
					"content": "Desenvolvimento de um aplicativo mobile/web com Flutter, utilizando Mobx, arquitetura MVVM, integrações com Google Maps e outros packages."
				},
				{
					"title": "Estágio",
					"content": "Aprendizado de lógica de programação, design thinking, métodologias ágeis e web desing. E também, estudo das linguagens C# .NET 5, HTML, CSS e Javascript."
				},
			]
		},
		{
			"company": "Autônomo",
			"start": "Mar 2023",
			"end": "Nov 2023",
			"stepCompany": [
				{
					"title": "Desenvolvedor Flutter",
					"content": "Criações de aplicativos mobile/web na empresa Doutor Na Net, usando GetX, integrações com API Rest, métodos de pagamento, Firebase e websockets."
				},

			]
		}
		,];

	return (
		<section className={styles.carrer}>
			<div className={`${styles.container} animeLeft `}>
				<h1 className='title-section c-white'>Minhas Experiências</h1>
				<ul >
					{
						carrerList.map((company) => (
							<li key={company.company} className={styles.informacoes}>
								<h2>{company.company} | <span>{company.start} - {company.end != null ? company.end : "Atual"}.</span></h2>
								{
									company.stepCompany.map((step) => (
										<div key={step.title} className={styles.stepCompany}>
											<h3>- {step.title}.</h3>
											<p>{step.content}</p>
										</div>
									))
								}
							</li>
						))
					}
				</ul>
			</div>
		</section >
	)
}
