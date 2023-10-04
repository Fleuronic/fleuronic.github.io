component Header {
	const SIZE = 14
	
	style base {
		color: #{Ui.Colors:FLEURONIC_BLUE};
		background-color: white;
		padding: 8px 0px 8px 20px;		
	}	
	
	style button {
		> button {
			background-color: #{Ui.Colors:FLEURONIC_BLUE};
		}
	}

	
	fun render: Html {
		<div::base>
			<Ui.Header
				icon={Ui.Icons:THREE_BARS}
				size={Ui.Size::Px(SIZE)}
				brand={<img src={@asset(../../assets/icon_wordmark.png)} style="width: 16vw;"/>}
				breakpoint={0}
				items={[servicesItem, blogItem, contactItem]}/>
		</div>	
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
