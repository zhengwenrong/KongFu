package org.wenrong.kongfu.pojo;

import java.util.ArrayList;
import java.util.List;

public class OrderitemExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public OrderitemExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andOrderIdIsNull() {
            addCriterion("order_id is null");
            return (Criteria) this;
        }

        public Criteria andOrderIdIsNotNull() {
            addCriterion("order_id is not null");
            return (Criteria) this;
        }

        public Criteria andOrderIdEqualTo(String value) {
            addCriterion("order_id =", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdNotEqualTo(String value) {
            addCriterion("order_id <>", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdGreaterThan(String value) {
            addCriterion("order_id >", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdGreaterThanOrEqualTo(String value) {
            addCriterion("order_id >=", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdLessThan(String value) {
            addCriterion("order_id <", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdLessThanOrEqualTo(String value) {
            addCriterion("order_id <=", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdLike(String value) {
            addCriterion("order_id like", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdNotLike(String value) {
            addCriterion("order_id not like", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdIn(List<String> values) {
            addCriterion("order_id in", values, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdNotIn(List<String> values) {
            addCriterion("order_id not in", values, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdBetween(String value1, String value2) {
            addCriterion("order_id between", value1, value2, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdNotBetween(String value1, String value2) {
            addCriterion("order_id not between", value1, value2, "orderId");
            return (Criteria) this;
        }

        public Criteria andMemuIdIsNull() {
            addCriterion("memu_id is null");
            return (Criteria) this;
        }

        public Criteria andMemuIdIsNotNull() {
            addCriterion("memu_id is not null");
            return (Criteria) this;
        }

        public Criteria andMemuIdEqualTo(String value) {
            addCriterion("memu_id =", value, "memuId");
            return (Criteria) this;
        }

        public Criteria andMemuIdNotEqualTo(String value) {
            addCriterion("memu_id <>", value, "memuId");
            return (Criteria) this;
        }

        public Criteria andMemuIdGreaterThan(String value) {
            addCriterion("memu_id >", value, "memuId");
            return (Criteria) this;
        }

        public Criteria andMemuIdGreaterThanOrEqualTo(String value) {
            addCriterion("memu_id >=", value, "memuId");
            return (Criteria) this;
        }

        public Criteria andMemuIdLessThan(String value) {
            addCriterion("memu_id <", value, "memuId");
            return (Criteria) this;
        }

        public Criteria andMemuIdLessThanOrEqualTo(String value) {
            addCriterion("memu_id <=", value, "memuId");
            return (Criteria) this;
        }

        public Criteria andMemuIdLike(String value) {
            addCriterion("memu_id like", value, "memuId");
            return (Criteria) this;
        }

        public Criteria andMemuIdNotLike(String value) {
            addCriterion("memu_id not like", value, "memuId");
            return (Criteria) this;
        }

        public Criteria andMemuIdIn(List<String> values) {
            addCriterion("memu_id in", values, "memuId");
            return (Criteria) this;
        }

        public Criteria andMemuIdNotIn(List<String> values) {
            addCriterion("memu_id not in", values, "memuId");
            return (Criteria) this;
        }

        public Criteria andMemuIdBetween(String value1, String value2) {
            addCriterion("memu_id between", value1, value2, "memuId");
            return (Criteria) this;
        }

        public Criteria andMemuIdNotBetween(String value1, String value2) {
            addCriterion("memu_id not between", value1, value2, "memuId");
            return (Criteria) this;
        }

        public Criteria andBuynumIsNull() {
            addCriterion("buynum is null");
            return (Criteria) this;
        }

        public Criteria andBuynumIsNotNull() {
            addCriterion("buynum is not null");
            return (Criteria) this;
        }

        public Criteria andBuynumEqualTo(Integer value) {
            addCriterion("buynum =", value, "buynum");
            return (Criteria) this;
        }

        public Criteria andBuynumNotEqualTo(Integer value) {
            addCriterion("buynum <>", value, "buynum");
            return (Criteria) this;
        }

        public Criteria andBuynumGreaterThan(Integer value) {
            addCriterion("buynum >", value, "buynum");
            return (Criteria) this;
        }

        public Criteria andBuynumGreaterThanOrEqualTo(Integer value) {
            addCriterion("buynum >=", value, "buynum");
            return (Criteria) this;
        }

        public Criteria andBuynumLessThan(Integer value) {
            addCriterion("buynum <", value, "buynum");
            return (Criteria) this;
        }

        public Criteria andBuynumLessThanOrEqualTo(Integer value) {
            addCriterion("buynum <=", value, "buynum");
            return (Criteria) this;
        }

        public Criteria andBuynumIn(List<Integer> values) {
            addCriterion("buynum in", values, "buynum");
            return (Criteria) this;
        }

        public Criteria andBuynumNotIn(List<Integer> values) {
            addCriterion("buynum not in", values, "buynum");
            return (Criteria) this;
        }

        public Criteria andBuynumBetween(Integer value1, Integer value2) {
            addCriterion("buynum between", value1, value2, "buynum");
            return (Criteria) this;
        }

        public Criteria andBuynumNotBetween(Integer value1, Integer value2) {
            addCriterion("buynum not between", value1, value2, "buynum");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}