<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="frmPuiDoc.aspx.cs" Inherits="PS_Pui.frmPuiDoc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <dx:ASPxSplitter ID="ASPxSplitter1" runat="server" Height="1000px">
                <Panes>
                    <dx:SplitterPane Size="220px">
                        <ContentCollection>
                            <dx:SplitterContentControl runat="server">
                                <dx:ASPxNavBar ID="ASPxNavBar1" runat="server" Height="100%">
                                    <Groups>
                                        <dx:NavBarGroup Text="เอกสาร">
                                            <HeaderImage IconID="actions_open_16x16">
                                            </HeaderImage>
                                            <Items>
                                                <dx:NavBarItem Text="ใบคำร้อง">
                                                    <Image IconID="arrange_withtextwrapping_topcenter_16x16">
                                                    </Image>
                                                </dx:NavBarItem>
                                                <dx:NavBarItem Text="ใบส่งของ">
                                                    <Image IconID="arrange_withtextwrapping_topcenter_16x16">
                                                    </Image>
                                                </dx:NavBarItem>
                                            </Items>
                                        </dx:NavBarGroup>
                                        <dx:NavBarGroup Text="รายงาน">
                                            <HeaderImage IconID="functionlibrary_morefunctions_16x16">
                                            </HeaderImage>
                                            <Items>
                                                <dx:NavBarItem Text="1">
                                                </dx:NavBarItem>
                                                <dx:NavBarItem Text="2">
                                                </dx:NavBarItem>
                                            </Items>
                                        </dx:NavBarGroup>
                                    </Groups>
                                </dx:ASPxNavBar>
                            </dx:SplitterContentControl>
                        </ContentCollection>
                    </dx:SplitterPane>
                    <dx:SplitterPane>
                        <ContentCollection>
                            <dx:SplitterContentControl runat="server">
                                <table style="width:100%;">
                                    <tr>
                                        <td>
                                            <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" HeaderText="ข้อมูลใบคำร้อง / ใบส่งของ" Width="100%">
                                                <PanelCollection>
                                                    <dx:PanelContent runat="server">
                                                        <dx:ASPxGridView ID="ASPxGridView1" runat="server" Width="100%">
                                                        </dx:ASPxGridView>
                                                    </dx:PanelContent>
                                                </PanelCollection>
                                            </dx:ASPxRoundPanel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                                <dx:ASPxPopupControl ID="ASPxPopupControl1" runat="server" Modal="True">
                                    <ContentCollection>
                                        <dx:PopupControlContentControl runat="server">
                                            <dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" ColCount="3" Width="100%">
                                                <Items>
                                                    <dx:LayoutGroup Caption="ข้อมูลเอกสาร" ColCount="3" ColSpan="3" HorizontalAlign="Center" Width="900px">
                                                        <Items>
                                                            <dx:LayoutItem Caption="เลขที่ใบคำร้อง">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                        <dx:ASPxTextBox ID="ASPxFormLayout1_E1" runat="server">
                                                                        </dx:ASPxTextBox>
                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="วันที่">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                        <dx:ASPxDateEdit ID="ASPxFormLayout1_E5" runat="server">
                                                                        </dx:ASPxDateEdit>
                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:EmptyLayoutItem>
                                                            </dx:EmptyLayoutItem>
                                                            <dx:LayoutItem Caption="เลขที่ใบส่งของ">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                        <dx:ASPxTextBox ID="ASPxFormLayout1_E2" runat="server">
                                                                        </dx:ASPxTextBox>
                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="วันที่">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                        <dx:ASPxDateEdit ID="ASPxFormLayout1_E6" runat="server">
                                                                        </dx:ASPxDateEdit>
                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:EmptyLayoutItem>
                                                            </dx:EmptyLayoutItem>
                                                        </Items>
                                                    </dx:LayoutGroup>
                                                    <dx:LayoutGroup Caption="ข้อมูลโควต้า" ColCount="3" ColSpan="3" HorizontalAlign="Center" Width="900px">
                                                        <Items>
                                                            <dx:LayoutItem Caption="โควต้า">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                        <dx:ASPxGridLookup ID="ASPxFormLayout1_E7" runat="server">
                                                                            <GridViewProperties>
                                                                                <SettingsBehavior AllowFocusedRow="True" AllowSelectSingleRowOnly="True" />
                                                                            </GridViewProperties>
                                                                        </dx:ASPxGridLookup>
                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="เขต">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                        <dx:ASPxTextBox ID="ASPxFormLayout1_E9" runat="server">
                                                                        </dx:ASPxTextBox>
                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:EmptyLayoutItem>
                                                            </dx:EmptyLayoutItem>
                                                            <dx:LayoutItem Caption="ชื่อโควต้า" ColSpan="3">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                        <dx:ASPxTextBox ID="ASPxFormLayout1_E8" runat="server" Width="100%">
                                                                        </dx:ASPxTextBox>
                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
                                                    </dx:LayoutGroup>
                                                    <dx:LayoutGroup Caption="รายละเอียด" ColCount="3" ColSpan="3" HorizontalAlign="Center" Width="900px">
                                                        <Items>
                                                            <dx:LayoutItem Caption="บริษัทปุ๋ย">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                        <dx:ASPxComboBox ID="ASPxFormLayout1_E10" runat="server">
                                                                        </dx:ASPxComboBox>
                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="สูตรปุ๋ย">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                        <dx:ASPxComboBox ID="ASPxFormLayout1_E11" runat="server">
                                                                        </dx:ASPxComboBox>
                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:EmptyLayoutItem>
                                                            </dx:EmptyLayoutItem>
                                                            <dx:LayoutItem Caption="จำนวน" RowSpan="2">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                        <dx:ASPxSpinEdit ID="ASPxFormLayout1_E12" runat="server">
                                                                        </dx:ASPxSpinEdit>
                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="ราคาทุน">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                        <dx:ASPxTextBox ID="ASPxFormLayout1_E13" runat="server">
                                                                        </dx:ASPxTextBox>
                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="ราคาทุนรวม">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                        <dx:ASPxTextBox ID="ASPxFormLayout1_E14" runat="server">
                                                                        </dx:ASPxTextBox>
                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="ราคาขาย">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                        <dx:ASPxTextBox ID="ASPxFormLayout1_E15" runat="server">
                                                                        </dx:ASPxTextBox>
                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="ราคาขายรวม">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                        <dx:ASPxTextBox ID="ASPxFormLayout1_E16" runat="server">
                                                                        </dx:ASPxTextBox>
                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="น้ำหนัก">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                        <dx:ASPxTextBox ID="ASPxFormLayout1_E17" runat="server">
                                                                        </dx:ASPxTextBox>
                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="ทะเบียนรถ">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer runat="server">
                                                                        <dx:ASPxTextBox ID="ASPxFormLayout1_E18" runat="server">
                                                                        </dx:ASPxTextBox>
                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
                                                    </dx:LayoutGroup>
                                                    <dx:LayoutItem Caption="หมายเหตุ" ColSpan="3" HorizontalAlign="Center" Width="900px">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer runat="server">
                                                                <dx:ASPxTextBox ID="ASPxFormLayout1_E19" runat="server" Width="100%">
                                                                </dx:ASPxTextBox>
                                                            </dx:LayoutItemNestedControlContainer>
                                                        </LayoutItemNestedControlCollection>
                                                    </dx:LayoutItem>
                                                </Items>
                                            </dx:ASPxFormLayout>
                                        </dx:PopupControlContentControl>
                                    </ContentCollection>
                                </dx:ASPxPopupControl>
                            </dx:SplitterContentControl>
                        </ContentCollection>
                    </dx:SplitterPane>
                </Panes>
            </dx:ASPxSplitter>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
