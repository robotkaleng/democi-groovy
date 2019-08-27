import org.springframework.core.env.*
import java.util.Date

@Controller
class Application {

	@RequestMapping("/")
	@ResponseBody
	public String index(Model model) {
		return "<body bgcolor='blue'><h1>Hello BCA Leaders,</h1> <h1>Welcome to Pivotal Labs!  </h1></body>"
	}

	@RequestMapping("/ping")
	@ResponseBody
	public String ping() {
		return "Pong: " + new Date()
	}

	@RequestMapping("/killme")
	public void killme() {
		System.exit(-1)
	}

}
