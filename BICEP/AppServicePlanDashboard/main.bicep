param servicePlanName string

param resourceGroupName string

param dashboardName string = guid(servicePlanName, resourceGroupName)

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
                            id: resourceId(resourceGroupName, 'microsoft.web/serverfarms', servicePlanName)
                          }
                          name: 'CpuPercentage'
                          aggregationType: 4
                          namespace: 'microsoft.web/serverfarms'
                          metricVisualization: {
                            displayName: 'CPU Percentage'
                            resourceDisplayName: servicePlanName
                          }
                        }
                        {
                          resourceMetadata: {
                            id: resourceId(resourceGroupName, 'microsoft.web/serverfarms', servicePlanName)
                          }
                          name: 'CpuPercentage'
                          aggregationType: 3
                          namespace: 'microsoft.web/serverfarms'
                          metricVisualization: {
                            displayName: 'CPU Percentage'
                            resourceDisplayName: servicePlanName
                          }
                        }
                      ]
                      title: 'Avg CPU Percentage and Max CPU Percentage for ${servicePlanName}'
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
                            id: resourceId(resourceGroupName, 'microsoft.web/serverfarms', servicePlanName)
                          }
                          name: 'MemoryPercentage'
                          aggregationType: 4
                          namespace: 'microsoft.web/serverfarms'
                          metricVisualization: {
                            displayName: 'Memory Percentage'
                            resourceDisplayName: servicePlanName
                          }
                        }
                        {
                          resourceMetadata: {
                            id: resourceId(resourceGroupName, 'microsoft.web/serverfarms', servicePlanName)
                          }
                          name: 'MemoryPercentage'
                          aggregationType: 3
                          namespace: 'microsoft.web/serverfarms'
                          metricVisualization: {
                            displayName: 'Memory Percentage'
                            resourceDisplayName: servicePlanName
                          }
                        }
                      ]
                      title: 'Avg Memory Percentage and Max Memory Percentage for ${servicePlanName}'
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
                            id: resourceId(resourceGroupName, 'microsoft.web/serverfarms', servicePlanName)
                          }
                          name: 'DiskQueueLength'
                          aggregationType: 4
                          namespace: 'microsoft.web/serverfarms'
                          metricVisualization: {
                            displayName: 'Disk Queue Length'
                            resourceDisplayName: servicePlanName
                          }
                        }
                        {
                          resourceMetadata: {
                            id: resourceId(resourceGroupName, 'microsoft.web/serverfarms', servicePlanName)
                          }
                          name: 'DiskQueueLength'
                          aggregationType: 3
                          namespace: 'microsoft.web/serverfarms'
                          metricVisualization: {
                            displayName: 'Disk Queue Length'
                            resourceDisplayName: servicePlanName
                          }
                        }
                      ]
                      title: 'Avg Disk Queue Length and Max Disk Queue Length for ${servicePlanName}'
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
                            id: resourceId(resourceGroupName, 'microsoft.web/serverfarms', servicePlanName)
                          }
                          name: 'HttpQueueLength'
                          aggregationType: 4
                          namespace: 'microsoft.web/serverfarms'
                          metricVisualization: {
                            displayName: 'Http Queue Length'
                            resourceDisplayName: servicePlanName
                          }
                        }
                        {
                          resourceMetadata: {
                            id: resourceId(resourceGroupName, 'microsoft.web/serverfarms', servicePlanName)
                          }
                          name: 'HttpQueueLength'
                          aggregationType: 3
                          namespace: 'microsoft.web/serverfarms'
                          metricVisualization: {
                            displayName: 'Http Queue Length'
                            resourceDisplayName: servicePlanName
                          }
                        }
                      ]
                      title: 'Avg Http Queue Length and Max Http Queue Length for ${servicePlanName}'
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
