<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Grafikler.aspx.cs" Inherits="WebNotSistemi.Grafikler" %>
<%@ Register assembly="DevExpress.XtraCharts.v19.2.Web, Version=19.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
            height: 400px;
            width: 809px;
        }

        .auto-style5 {
            text-align: center;
            width: 809px;
        }

        .auto-style6 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
        <table class="table table-bordered table-hover"">
            <tr>
                <td class="auto-style2">
                    <table class="nav-justified">
                        <tr>
                            <td>
                                <table class="nav-justified">
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="text-left">
                                            <asp:DropDownList ID="DropDownList" runat="server" CssClass="form-control" AutoPostBack="true"  OnSelectedIndexChanged="DropDownList_SelectedIndexChanged"></asp:DropDownList>
                                            <dx:WebChartControl ID="WebChartNot" runat="server" CrosshairEnabled="True" Height="395px" Width="703px">
                                                <DiagramSerializable>
                                                    <dx:XYDiagram>
                                                        <AxisX VisibleInPanesSerializable="-1">
                                                        </AxisX>
                                                        <AxisY VisibleInPanesSerializable="-1">
                                                        </AxisY>
                                                    </dx:XYDiagram>
                                                </DiagramSerializable>
<Legend Name="Default Legend"></Legend>
                                                <SeriesSerializable>
                                                    <dx:Series Name="Series">
                                                    </dx:Series>
                                                </SeriesSerializable>
                                            </dx:WebChartControl>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style3">
                    <table class="nav-justified">
                        <tr>
                            <td>
                                <table class="nav-justified">
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <dx:WebChartControl ID="WebChartCinsiyet" runat="server" CrosshairEnabled="True" CssClass="auto-style6" Height="400px" Width="700px">
<Legend Name="Default Legend"></Legend>
                        <SeriesSerializable>
                            <dx:Series LegendTextPattern="{A}" Name="Cinsiyet">
                                <ViewSerializable>
                                    <dx:PieSeriesView>
                                    </dx:PieSeriesView>
                                </ViewSerializable>
                            </dx:Series>
                        </SeriesSerializable>
                    </dx:WebChartControl>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <table class="nav-justified">
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <dx:WebChartControl ID="WebChartOgretmen" runat="server" CrosshairEnabled="True" CssClass="auto-style6" Height="400px" Width="700px">
                        <DiagramSerializable>
                            <dx:XYDiagram>
                                <axisx visibleinpanesserializable="-1">
                                    <WholeRange SideMarginsValue="0" />
                                </axisx>
                                <axisy visibleinpanesserializable="-1">
                                </axisy>
                            </dx:XYDiagram>
                        </DiagramSerializable>
<Legend Name="Default Legend"></Legend>
                        <SeriesSerializable>
                            <dx:Series Name="Öğretmen">
                                <ViewSerializable>
                                    <dx:StackedStepAreaSeriesView>
                                    </dx:StackedStepAreaSeriesView>
                                </ViewSerializable>
                            </dx:Series>
                        </SeriesSerializable>
                    </dx:WebChartControl>
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="text-center">
                    <table class="nav-justified">
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <div class="text-center">
                    <dx:WebChartControl ID="WebChartDers" runat="server" CrosshairEnabled="True" CssClass="auto-style6" Height="400px" Width="700px">
                        <DiagramSerializable>
                            <dx:SimpleDiagram3D RotationMatrixSerializable="1;0;0;0;0;0.5;-0.866025403784439;0;0;0.866025403784439;0.5;0;0;0;0;1">
                            </dx:SimpleDiagram3D>
                        </DiagramSerializable>
<Legend Name="Default Legend"></Legend>
                        <SeriesSerializable>
                            <dx:Series LegendTextPattern="{A}" Name="Dersler">
                                <ViewSerializable>
                                    <dx:Pie3DSeriesView>
                                    </dx:Pie3DSeriesView>
                                </ViewSerializable>
                            </dx:Series>
                        </SeriesSerializable>
                    </dx:WebChartControl>
                    </div>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>
