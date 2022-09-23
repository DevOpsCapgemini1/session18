param appGatewayName string

param resourceGroupName string

param dashboardName string = guid(appGatewayName, resourceGroupName)

param location string = resourceGroup().location

resource dashboardResource 'Microsoft.Portal/dashboards@2020-09-01-preview' = {
  name: dashboardName
  location: location
  properties: {
    lenses: [
      {
        order: 0
        parts: [
          {
            position: {
              x: 0
              y: 0
              colSpan: 5
              rowSpan: 3
            }
            metadata: {
              inputs: [
                {
                  name: 'options'
                  isOptional: true
                }
                {
                  name: 'sharedTimeRange'
                  isOptional: true
                }
              ]
              type: 'Extension/HubsExtension/PartType/MonitorChartPart'
              settings: {
                content: {
                  options: {
                    chart: {
                      metrics: [
                        {
                          resourceMetadata: {
                            id: resourceId('microsoft.network/applicationgateways', appGatewayName)
                          }
                          name: 'TotalRequests'
                          aggregationType: 1
                          namespace: 'microsoft.network/applicationgateways'
                          metricVisualization: {
                            displayName: 'Total Requests'
                            resourceDisplayName: appGatewayName
                          }
                        }
                      ]
                      title: 'Sum Total Requests for ${appGatewayName}'
                      titleKind: 1
                      visualization: {
                        chartType: 2
                        legendVisualization: {
                          isVisible: true
                          position: 2
                          hideSubtitle: false
                        }
                        axisVisualization: {
                          x: {
                            isVisible: true
                            axisType: 2
                          }
                          y: {
                            isVisible: true
                            axisType: 1
                          }
                        }
                        disablePinning: true
                      }
                    }
                  }
                }
              }
            }
          }
          {
            position: {
              x: 5
              y: 0
              colSpan: 5
              rowSpan: 3
            }
            metadata: {
              inputs: [
                {
                  name: 'options'
                  isOptional: true
                }
                {
                  name: 'sharedTimeRange'
                  isOptional: true
                }
              ]
              type: 'Extension/HubsExtension/PartType/MonitorChartPart'
              settings: {
                content: {
                  options: {
                    chart: {
                      metrics: [
                        {
                          resourceMetadata: {
                            id: resourceId('microsoft.network/applicationgateways', appGatewayName)
                          }
                          name: 'FailedRequests'
                          aggregationType: 1
                          namespace: 'microsoft.network/applicationgateways'
                          metricVisualization: {
                            displayName: 'Failed Requests'
                            resourceDisplayName: appGatewayName
                          }
                        }
                      ]
                      title: 'Sum Failed Requests for ${appGatewayName}'
                      titleKind: 1
                      visualization: {
                        chartType: 2
                        legendVisualization: {
                          isVisible: true
                          position: 2
                          hideSubtitle: false
                        }
                        axisVisualization: {
                          x: {
                            isVisible: true
                            axisType: 2
                          }
                          y: {
                            isVisible: true
                            axisType: 1
                          }
                        }
                        disablePinning: true
                      }
                    }
                  }
                }
              }
            }
          }
          {
            position: {
              x: 10
              y: 0
              colSpan: 5
              rowSpan: 3
            }
            metadata: {
              inputs: [
                {
                  name: 'options'
                  isOptional: true
                }
                {
                  name: 'sharedTimeRange'
                  isOptional: true
                }
              ]
              type: 'Extension/HubsExtension/PartType/MonitorChartPart'
              settings: {
                content: {
                  options: {
                    chart: {
                      metrics: [
                        {
                          resourceMetadata: {
                            id: resourceId('microsoft.network/applicationgateways', appGatewayName)
                          }
                          name: 'HealthyHostCount'
                          aggregationType: 4
                          namespace: 'microsoft.network/applicationgateways'
                          metricVisualization: {
                            displayName: 'Healthy Host Count'
                            resourceDisplayName: appGatewayName
                          }
                        }
                        {
                          resourceMetadata: {
                            id: resourceId('microsoft.network/applicationgateways', appGatewayName)
                          }
                          name: 'UnhealthyHostCount'
                          aggregationType: 4
                          namespace: 'microsoft.network/applicationgateways'
                          metricVisualization: {
                            displayName: 'Unhealthy Host Count'
                            resourceDisplayName: appGatewayName
                          }
                        }
                      ]
                      title: 'Avg Healthy Host Count and Avg Unhealthy Host Count for ${appGatewayName}'
                      titleKind: 1
                      visualization: {
                        chartType: 2
                        legendVisualization: {
                          isVisible: true
                          position: 2
                          hideSubtitle: false
                        }
                        axisVisualization: {
                          x: {
                            isVisible: true
                            axisType: 2
                          }
                          y: {
                            isVisible: true
                            axisType: 1
                          }
                        }
                        disablePinning: true
                      }
                    }
                  }
                }
              }
            }
          }
          {
            position: {
              x: 0
              y: 3
              colSpan: 5
              rowSpan: 3
            }
            metadata: {
              inputs: [
                {
                  name: 'options'
                  isOptional: true
                }
                {
                  name: 'sharedTimeRange'
                  isOptional: true
                }
              ]
              type: 'Extension/HubsExtension/PartType/MonitorChartPart'
              settings: {
                content: {
                  options: {
                    chart: {
                      metrics: [
                        {
                          resourceMetadata: {
                            id: resourceId('microsoft.network/applicationgateways', appGatewayName)
                          }
                          name: 'Throughput'
                          aggregationType: 4
                          namespace: 'microsoft.network/applicationgateways'
                          metricVisualization: {
                            displayName: 'Throughput'
                            resourceDisplayName: appGatewayName
                          }
                        }
                      ]
                      title: 'Avg Throughput for ${appGatewayName}'
                      titleKind: 1
                      visualization: {
                        chartType: 2
                        legendVisualization: {
                          isVisible: true
                          position: 2
                          hideSubtitle: false
                        }
                        axisVisualization: {
                          x: {
                            isVisible: true
                            axisType: 2
                          }
                          y: {
                            isVisible: true
                            axisType: 1
                          }
                        }
                        disablePinning: true
                      }
                    }
                  }
                }
              }
            }
          }
          {
            position: {
              x: 5
              y: 3
              colSpan: 5
              rowSpan: 3
            }
            metadata: {
              inputs: [
                {
                  name: 'options'
                  isOptional: true
                }
                {
                  name: 'sharedTimeRange'
                  isOptional: true
                }
              ]
              type: 'Extension/HubsExtension/PartType/MonitorChartPart'
              settings: {
                content: {
                  options: {
                    chart: {
                      metrics: [
                        {
                          resourceMetadata: {
                            id: resourceId('microsoft.network/applicationgateways', appGatewayName)
                          }
                          name: 'ApplicationGatewayTotalTime'
                          aggregationType: 4
                          namespace: 'microsoft.network/applicationgateways'
                          metricVisualization: {
                            displayName: 'Application Gateway Total Time'
                            resourceDisplayName: appGatewayName
                          }
                        }
                      ]
                      title: 'Avg Application Gateway Total Time for ${appGatewayName}'
                      titleKind: 1
                      visualization: {
                        chartType: 2
                        legendVisualization: {
                          isVisible: true
                          position: 2
                          hideSubtitle: false
                        }
                        axisVisualization: {
                          x: {
                            isVisible: true
                            axisType: 2
                          }
                          y: {
                            isVisible: true
                            axisType: 1
                          }
                        }
                        disablePinning: true
                      }
                    }
                  }
                }
              }
            }
          }
          {
            position: {
              x: 10
              y: 3
              colSpan: 5
              rowSpan: 3
            }
            metadata: {
              inputs: [
                {
                  name: 'options'
                  isOptional: true
                }
                {
                  name: 'sharedTimeRange'
                  isOptional: true
                }
              ]
              type: 'Extension/HubsExtension/PartType/MonitorChartPart'
              settings: {
                content: {
                  options: {
                    chart: {
                      metrics: [
                        {
                          resourceMetadata: {
                            id: resourceId('microsoft.network/applicationgateways', appGatewayName)
                          }
                          name: 'BackendConnectTime'
                          aggregationType: 4
                          namespace: 'microsoft.network/applicationgateways'
                          metricVisualization: {
                            displayName: 'Backend Connect Time'
                            resourceDisplayName: appGatewayName
                          }
                        }
                      ]
                      title: 'Avg Backend Connect Time for ${appGatewayName}'
                      titleKind: 1
                      visualization: {
                        chartType: 2
                        legendVisualization: {
                          isVisible: true
                          position: 2
                          hideSubtitle: false
                        }
                        axisVisualization: {
                          x: {
                            isVisible: true
                            axisType: 2
                          }
                          y: {
                            isVisible: true
                            axisType: 1
                          }
                        }
                        disablePinning: true
                      }
                    }
                  }
                }
              }
            }
          }
          {
            position: {
              x: 0
              y: 6
              colSpan: 5
              rowSpan: 3
            }
            metadata: {
              inputs: [
                {
                  name: 'options'
                  isOptional: true
                }
                {
                  name: 'sharedTimeRange'
                  isOptional: true
                }
              ]
              type: 'Extension/HubsExtension/PartType/MonitorChartPart'
              settings: {
                content: {
                  options: {
                    chart: {
                      metrics: [
                        {
                          resourceMetadata: {
                            id: resourceId('microsoft.network/applicationgateways', appGatewayName)
                          }
                          name: 'BackendFirstByteResponseTime'
                          aggregationType: 4
                          namespace: 'microsoft.network/applicationgateways'
                          metricVisualization: {
                            displayName: 'Backend First Byte Response Time'
                            resourceDisplayName: appGatewayName
                          }
                        }
                      ]
                      title: 'Avg Backend First Byte Response Time for ${appGatewayName}'
                      titleKind: 1
                      visualization: {
                        chartType: 2
                        legendVisualization: {
                          isVisible: true
                          position: 2
                          hideSubtitle: false
                        }
                        axisVisualization: {
                          x: {
                            isVisible: true
                            axisType: 2
                          }
                          y: {
                            isVisible: true
                            axisType: 1
                          }
                        }
                        disablePinning: true
                      }
                    }
                  }
                }
              }
            }
          }
          {
            position: {
              x: 5
              y: 6
              colSpan: 5
              rowSpan: 3
            }
            metadata: {
              inputs: [
                {
                  name: 'options'
                  isOptional: true
                }
                {
                  name: 'sharedTimeRange'
                  isOptional: true
                }
              ]
              type: 'Extension/HubsExtension/PartType/MonitorChartPart'
              settings: {
                content: {
                  options: {
                    chart: {
                      metrics: [
                        {
                          resourceMetadata: {
                            id: resourceId('microsoft.network/applicationgateways', appGatewayName)
                          }
                          name: 'BackendLastByteResponseTime'
                          aggregationType: 4
                          namespace: 'microsoft.network/applicationgateways'
                          metricVisualization: {
                            displayName: 'Backend Last Byte Response Time'
                            resourceDisplayName: appGatewayName
                          }
                        }
                      ]
                      title: 'Avg Backend Last Byte Response Time for ${appGatewayName}${appGatewayName}'
                      titleKind: 1
                      visualization: {
                        chartType: 2
                        legendVisualization: {
                          isVisible: true
                          position: 2
                          hideSubtitle: false
                        }
                        axisVisualization: {
                          x: {
                            isVisible: true
                            axisType: 2
                          }
                          y: {
                            isVisible: true
                            axisType: 1
                          }
                        }
                        disablePinning: true
                      }
                    }
                  }
                }
              }
            }
          }
        ]
      }
    ]
  }
}
