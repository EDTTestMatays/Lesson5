// @strict-types

#Region FormTableItemsEventHandlersТовары
&AtClient
Procedure ТоварыКоличествоOnChange(Item)
	ПересчетТекущейСтроки();
EndProcedure

&AtClient
Procedure ТоварыЦенаOnChange(Item)
	ПересчетТекущейСтроки();
EndProcedure

#EndRegion


#Region Private

&AtClient
Procedure ПересчетТекущейСтроки()

	ТекущиеДанные = Элементы.Товары.ТекущиеДанные;
	Если ТекущиеДанные = Неопределено Тогда
		Возврат;
	КонецЕсли;
	
	ТекущиеДанные.Сумма = ТекущиеДанные.Количество*ТекущиеДанные.Цена;
	
	Object.Сумма = Object.Товары.Итог("Сумма");
	
EndProcedure

#EndRegion
