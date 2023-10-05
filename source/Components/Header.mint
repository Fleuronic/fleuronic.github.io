component Header {
	const SIZE = 14
	
	style base {
		color: #{Ui.Colors:FLEURONIC_BLUE};
		background-color: white;
		padding: 18px 16px 8px 32px;		
	}	
	
	style button {
		> button {
			background-color: #{Ui.Colors:FLEURONIC_BLUE};
		}
	}
	
	fun render: Html {
		<div::base>
			<Ui.Header
				brand={brand}
				items={[aboutItem, servicesItem, blogItem, contactItem]}
				breakpoint={0}/>
		</div>	
	}
	
	get brand {
		<img 
			src={@asset(../../assets/icon_wordmark.png)} 
			style="width: 16vw;"/>
	}

	get aboutItem {
		Ui.NavItem::Link(
			iconBefore: <{}>,
			iconAfter: <{}>,
			target: "",
			label: "About",
			href: "/about")
	}
	
	get servicesItem {
		Ui.NavItem::Link(
			iconBefore: <{}>,
			iconAfter: <{}>,
			target: "",
			label: "Services",
			href: "/services")
	}
	
	get blogItem {
		Ui.NavItem::Link(
			iconBefore: <{}>,
			iconAfter: <{}>,
			target: "",
			label: "Blog",
			href: "/blog")		
	}
	
	get contactItem {
		Ui.NavItem::Html(
			<div::button>
				<Ui.Button label="Get in Touch"/>
			</div>)
	}
}
