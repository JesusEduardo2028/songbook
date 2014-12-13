class DashboardController < ApplicationController
	before_action :authenticate_user!
  def index
  	@emo_entries = EmoEntry.where(email: current_user.email)
    @timeline = @emo_entries.map {|entry| Time.at(entry.timestamp.to_i)}
    @data_node_0 = @emo_entries.map {|entry| [entry.timestamp.to_f,entry.nodes[0]]}
    @data_node_1 = @emo_entries.map {|entry| [entry.timestamp.to_f,entry.nodes[1]]}
    @data_node_2 = @emo_entries.map {|entry| [entry.timestamp.to_f,entry.nodes[2]]}
    @data_node_3 = @emo_entries.map {|entry| [entry.timestamp.to_f,entry.nodes[3]]}
    @data_node_4 = @emo_entries.map {|entry| [entry.timestamp.to_f,entry.nodes[4]]}
    @data_node_5 = @emo_entries.map {|entry| [entry.timestamp.to_f,entry.nodes[5]]}
    @data_node_6 = @emo_entries.map {|entry| [entry.timestamp.to_f,entry.nodes[6]]}
    @data_node_7 = @emo_entries.map {|entry| [entry.timestamp.to_f,entry.nodes[7]]}
    @data_node_8 = @emo_entries.map {|entry| [entry.timestamp.to_f,entry.nodes[8]]}
    @data_node_9 = @emo_entries.map {|entry| [entry.timestamp.to_f,entry.nodes[9]]}
    @data_node_10 = @emo_entries.map {|entry| [entry.timestamp.to_f,entry.nodes[10]]}
    @data_node_11 = @emo_entries.map {|entry| [entry.timestamp.to_f,entry.nodes[11]]}
    @data_node_12 = @emo_entries.map {|entry| [entry.timestamp.to_f,entry.nodes[12]]}
    @data_node_13 = @emo_entries.map {|entry| [entry.timestamp.to_f,entry.nodes[13]]}


    @emo_chart = LazyHighCharts::HighChart.new('graph') do |f|
        f.chart(type: 'spline')
        f.title(text: "Emo entries for #{current_user.email}")

        f.subtitle(text: 'Irregular time data in Highcharts JS')
        f.xAxis({
            type: 'datetime',
            dateTimeLabelFormats: {
                month: '%A, %b %e',
                year: '%b'
            },
            title: {
                text: "Date\n"
            }
        })

        f.legend(floating: true,align: "center",y: 13,align:"right")
        f.yAxis({
            title: {
                text: 'Snow depth (m)'
            },
            min: 0
        })
        f.tooltip({
            headerFormat: '<b>{series.name}</b><br>',
            pointFormat: '{point.x:%e - %b}: {point.y:.2f} m'
        })

        f.series(name: 'node 0', data: @data_node_0 , marker: {enabled: false})
        f.series(name: 'node 1', data: @data_node_1 , marker: {enabled: false})
        f.series(name: 'node 2', data: @data_node_2 , marker: {enabled: false})
        f.series(name: 'node 3', data: @data_node_3 , marker: {enabled: false})
        f.series(name: 'node 4', data: @data_node_4 , marker: {enabled: false})
        f.series(name: 'node 5', data: @data_node_5 , marker: {enabled: false})
        f.series(name: 'node 6', data: @data_node_6 , marker: {enabled: false})
        f.series(name: 'node 7', data: @data_node_7 , marker: {enabled: false})
        f.series(name: 'node 8', data: @data_node_8 , marker: {enabled: false})
        f.series(name: 'node 9', data: @data_node_9 , marker: {enabled: false})
        f.series(name: 'node 10', data: @data_node_10 , marker: {enabled: false})
        f.series(name: 'node 11', data: @data_node_11 , marker: {enabled: false})
        f.series(name: 'node 12', data: @data_node_12 , marker: {enabled: false})
        f.series(name: 'node 13', data: @data_node_13 , marker: {enabled: false})
    end

  end
end
