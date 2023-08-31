# ClimateInterface-SwiftUI

This is a simple SwiftUI-based weather app that displays weather information for different days of the week. The app allows you to switch between day and night modes by changing the background color gradient. The user interface is composed of various components, including the main content view, weather view, and a background view.

*Features

1.Displays weather information for different days of the week.
2.Allows users to switch between day and night modes.
3.Responsive UI design using SwiftUI's layout components.
4.Utilizes custom view components for displaying weather information and background colors.

*Usage

To use this weather app, follow these steps:

1.Clone or download the Swift code from this repository.
2.Open the project in Xcode or your preferred Swift development environment.
3.Run the project on a simulator or a real device.

*Components

ContentView:
The main content view (ContentView) displays the main user interface of the app. It includes:

1.A background color gradient that changes based on the day or night mode.
2.A title displaying the location ("London, ON").
3.Current weather information with an icon and temperature.
4.A horizontal stack of WeatherView instances for each day of the week.
5.A button to toggle between day and night modes.

*WeatherView
The WeatherView component represents a single day's weather information. It includes:

1.The day of the week.
2.An icon representing the weather condition.
3.The temperature for that day.

*BackgroundView
The BackgroundView component is responsible for rendering the background color gradient. It is used in the ContentView to provide a visually appealing transition between day and night modes.

*Modifying the App

Feel free to modify the app to suit your needs:

This weather app was created using SwiftUI, a modern and intuitive framework for building user interfaces across all Apple platforms. SwiftUI simplifies the process of creating responsive and dynamic interfaces using declarative syntax
