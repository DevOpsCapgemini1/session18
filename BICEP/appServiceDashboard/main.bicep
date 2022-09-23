param appName string

param resourceGroupName string

param dashboardName string = guid(appName, resourceGroupName)

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
                            id: resourceId('microsoft.web/sites', appName)
                          }
                          name: 'Requests'
                          aggregationType: 1
                          namespace: 'microsoft.web/sites'
                          metricVisualization: {
                            displayName: 'Requests'
                            resourceDisplayName: appName
                          }
                        }
                      ]
                      title: 'Sum Requests for ${appName}'
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
                            id: resourceId('microsoft.web/sites', appName)
                          }
                          name: 'HttpResponseTime'
                          aggregationType: 4
                          namespace: 'microsoft.web/sites'
                          metricVisualization: {
                            displayName: 'Response Time'
                            resourceDisplayName: appName
                          }
                        }
                        {
                          resourceMetadata: {
                            id: resourceId('microsoft.web/sites', appName)
                          }
                          name: 'HttpResponseTime'
                          aggregationType: 3
                          namespace: 'microsoft.web/sites'
                          metricVisualization: {
                            displayName: 'Response Time'
                            resourceDisplayName: appName
                          }
                        }
                      ]
                      title: 'Avg Response Time and Max Response Time for ${appName}'
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
                            id: resourceId('microsoft.web/sites', appName)
                          }
                          name: 'RequestsInApplicationQueue'
                          aggregationType: 4
                          namespace: 'microsoft.web/sites'
                          metricVisualization: {
                            displayName: 'Requests In Application Queue'
                            resourceDisplayName: appName
                          }
                        }
                        {
                          resourceMetadata: {
                            id: resourceId('microsoft.web/sites', appName)
                          }
                          name: 'RequestsInApplicationQueue'
                          aggregationType: 3
                          namespace: 'microsoft.web/sites'
                          metricVisualization: {
                            displayName: 'Requests In Application Queue'
                            resourceDisplayName: appName
                          }
                        }
                      ]
                      title: 'Avg Requests In Application Queue and Max Requests In Application Queue for ${appName}'
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
                            id: resourceId('microsoft.web/sites', appName)
                          }
                          name: 'CpuTime'
                          aggregationType: 1
                          namespace: 'microsoft.web/sites'
                          metricVisualization: {
                            displayName: 'CPU Time'
                            resourceDisplayName: appName
                          }
                        }
                      ]
                      title: 'Sum CPU Time for ${appName}'
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
                            id: resourceId('microsoft.web/sites', appName)
                          }
                          name: 'MemoryWorkingSet'
                          aggregationType: 4
                          namespace: 'microsoft.web/sites'
                          metricVisualization: {
                            displayName: 'Memory working set'
                            resourceDisplayName: appName
                          }
                        }
                        {
                          resourceMetadata: {
                            id: resourceId('microsoft.web/sites', appName)
                          }
                          name: 'MemoryWorkingSet'
                          aggregationType: 3
                          namespace: 'microsoft.web/sites'
                          metricVisualization: {
                            displayName: 'Memory working set'
                            resourceDisplayName: appName
                          }
                        }
                      ]
                      title: 'Avg Memory working set and Max Memory working set for ${appName}'
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
                            id: resourceId('microsoft.web/sites', appName)
                          }
                          name: 'Http101'
                          aggregationType: 1
                          namespace: 'microsoft.web/sites'
                          metricVisualization: {
                            displayName: 'Http 101'
                            resourceDisplayName: appName
                          }
                        }
                        {
                          resourceMetadata: {
                            id: resourceId('microsoft.web/sites', appName)
                          }
                          name: 'Http2xx'
                          aggregationType: 1
                          namespace: 'microsoft.web/sites'
                          metricVisualization: {
                            displayName: 'Http 2xx'
                            resourceDisplayName: appName
                          }
                        }
                        {
                          resourceMetadata: {
                            id: resourceId('microsoft.web/sites', appName)
                          }
                          name: 'Http3xx'
                          aggregationType: 1
                          namespace: 'microsoft.web/sites'
                          metricVisualization: {
                            displayName: 'Http 3xx'
                            resourceDisplayName: appName
                          }
                        }
                        {
                          resourceMetadata: {
                            id: resourceId('microsoft.web/sites', appName)
                          }
                          name: 'Http4xx'
                          aggregationType: 1
                          namespace: 'microsoft.web/sites'
                          metricVisualization: {
                            displayName: 'Http 4xx'
                            resourceDisplayName: appName
                          }
                        }
                        {
                          resourceMetadata: {
                            id: resourceId('microsoft.web/sites', appName)
                          }
                          name: 'Http5xx'
                          aggregationType: 1
                          namespace: 'microsoft.web/sites'
                          metricVisualization: {
                            displayName: 'Http Server Errors'
                            resourceDisplayName: appName
                          }
                        }
                      ]
                      title: 'Sum Http 101, Sum Http 2xx, and 3 other metrics for ${appName}'
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
